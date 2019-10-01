// SaveAllData(deleteExistingFile)
if(argument0 == true){
	if(file_exists("saveData.ini")) file_delete("saveData.ini");	
}
ini_open("saveData.ini")
ini_write_real("Costume_Vars", "CostumeNum", obj_costumeOrigin.costumeNum);
ini_close();