// FrameJ versão 04.18.2
// Gabriel Serrão, PRECISIONLAB, UFRA, 2018
// Step 1: cria a primeira seleção com medidas conhecidas
rename("Run");
//setTool("rectangle");
makeRectangle(1110, 588, 1154, 2832);
run("Duplicate...", "title=RegiaoTotal");
selectWindow("Run");
run("Close")
selectWindow("Step 1.ijm");
run("Close")



