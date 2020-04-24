package PresentationLayer;

import FunctionLayer.Calculator;
import FunctionLayer.LoginSampleException;
import FunctionLayer.Material;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class AddDimensionsCommand extends Command {
    @Override
    String execute(HttpServletRequest request, HttpServletResponse response) throws LoginSampleException, ClassNotFoundException {

        HttpSession session = request.getSession();

        int width = Integer.parseInt(request.getParameter("width"));
        int height = Integer.parseInt(request.getParameter("height"));
        int length = Integer.parseInt(request.getParameter("length"));
        boolean flatRoof = Boolean.parseBoolean(request.getParameter("flatRoof"));
        String roofMaterial = request.getParameter("roofMaterial");

        request.setAttribute("width", width);
        request.setAttribute("height", height);
        request.setAttribute("length", length);
        request.setAttribute("roofMaterial", flatRoof);
        request.setAttribute("roofMaterial", roofMaterial);

        Calculator cal = new Calculator();

        ArrayList<Material> bom = cal.bomCalculator(width, length, height, flatRoof, roofMaterial);

        request.setAttribute("materialList", bom);

        return "materialPage";
    }
}

