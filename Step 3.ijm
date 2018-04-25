// FrameJ vers�o 04.18.2
// Gabriel Serr�o, PRECISIONLAB, UFRA, 2018
// Step 2: Com a caca�a selecionada, calcula (sem escala definida) descritores de regi�o, de fronteira e de textura de sua proje��o, descritores de regi�o e de fronteira das proje��es dos ter�os Anterior, M�dio e Posterior como tamb�m as proje��es de m�sculo e gordura expostos utilizando o algoritmo k-means. 
// setTool("rectangle");
// Necessita do GLCM_Texture.class e do ij-plugins_toolkit.jar instalados no ImageJ

run("Set Measurements...", "area mean standard modal min perimeter bounding fit shape feret's integrated median display add redirect=None decimal=3");

setBackgroundColor(0, 0, 0);
run("Clear Outside");

run("Select None");
makeRectangle(0, 0, 1154, 944);
run("Duplicate...", "title=[GLCMPost.JPG]");
run("8-bit");
setThreshold(0, 0);
run("Create Selection");
run("Make Inverse");
run("GLCM Texture", "enter=1 select=[0 degrees] angular contrast correlation inverse entropy");
saveAs("Results", "C:\\GLCMPost.txt");
close();

run("Select None");
makeRectangle(0, 944, 1154, 944);
run("Duplicate...", "title=[GLCMMedi.JPG]");
run("8-bit");
setThreshold(0, 0);
run("Create Selection");
run("Make Inverse");
run("GLCM Texture", "enter=1 select=[0 degrees] angular contrast correlation inverse entropy");
saveAs("Results", "C:\\GLCMMedi.txt");
close();

run("Select None");
makeRectangle(0, 1888, 1154, 944);
run("Duplicate...", "title=[GLCMAnte.JPG]");
run("8-bit");
setThreshold(0, 0);
run("Create Selection");
run("Make Inverse");
run("GLCM Texture", "enter=1 select=[0 degrees] angular contrast correlation inverse entropy");
saveAs("Results", "C:\\GLCMAnte.txt");
close();

selectWindow("Results");
run("Close");
selectWindow("RegiaoTotal");
run("Close");
selectWindow("Step 3.ijm");
run("Close");
