// FrameJ vers�o 04.18.2
// Gabriel Serr�o, PRECISIONLAB, UFRA, 2018
// Step 1: cria a primeira sele��o com medidas conhecidas
rename("Run");
//setTool("rectangle");
makeRectangle(1110, 588, 1154, 2832);
run("Duplicate...", "title=RegiaoTotal");
selectWindow("Run");
run("Close")
selectWindow("Step 1.ijm");
run("Close")



