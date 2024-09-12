Using System
Using System.Collections.Generic
Using System.Text

Using XSharp.VFP

Using INIParser
Using INIParser.Model

Begin Namespace DisplayRelations

	/// <summary>
    /// The myConnect class.
    /// </summary>
    Define Class myConnect As Custom
        nStatementHandle = 0
        
        Procedure Init()       
            Return
        Endproc
                   
        Procedure CreateConnect()
            Local lcODBCDrive As String, lcServer As String, lcPort As String, lcUID As String, lcPWD As String, lcDatabase As String
            Local loParser As FileIniDataParser, data As IniData, section As KeyDataCollection
            Local lcConnectionStrings As String
            
            loParser    = FileIniDataParser{}
            data        = loParser.ReadFile("Config.INI")
            
            section = data["ODBC"]
            
            lcODBCDrive = section["ODBCDriver"]
            lcServer    = section["Server"]
            lcPort      = section["Port"]
            lcDatabase  = section["Database"]
            lcUID       = section["UID"]
            lcPWD       = section["PWD"]
            
            Text To lcConnectionStrings Noshow Textmerge Pretext 1 + 2 + 4 + 8
                Driver={<<lcODBCDrive>>};UID=<<lcUID>>;PWD=<<lcPWD>>;Server=<<lcServer>>,<<lcPort>>;Database=<<lcDatabase>>
            Endtext

            This.nStatementHandle = SqlStringConnect(lcConnectionStrings, .t.)
            
            Return
        Endproc    
    Enddefine
End Namespace
