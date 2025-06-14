package vn.hiunew.laptopshop.service;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;

@Service
public class UploadService {

    private final ServletContext servletContext;
    private static final String DEFAULT_AVATAR = "defaultAvatar.jpg";

    public UploadService(ServletContext servletContext) {
        this.servletContext = servletContext;
    }

    public void handleDeleteFile(String targetFolder, String fileName) {
        if (fileName != null && !fileName.isEmpty() && !DEFAULT_AVATAR.equals(fileName)) {
            String rootPath = servletContext.getRealPath("/resources/images/" + targetFolder);
            File oldFile = new File(rootPath, fileName);
            if (oldFile.exists()) {
                oldFile.delete();
            }
        }
    }

    public String handleSaveUploadFile(MultipartFile file, String targetFolder) {
        if (file == null || file.isEmpty()) {
            return null;
        }

        String rootPath = servletContext.getRealPath("/resources/images");
        String fileName = "";

        try {
            byte[] bytes = file.getBytes();

            File dir = new File(rootPath + File.separator + targetFolder);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            fileName = System.currentTimeMillis() + "-" + file.getOriginalFilename();
            File serverFile = new File(dir.getAbsolutePath() + File.separator + fileName);

            try (BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile))) {
                stream.write(bytes);
            }

        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }

        return fileName;
    }

}
