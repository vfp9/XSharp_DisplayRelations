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
        nStatementHandle As INT
        nStatementHandle    =  0
        
        Constructor()
            CreateConnect()
            Return
        End Constructor
        
        Procedure CreateConnect()
            Local lcODBCDrive As String, lcServer As String, lcPort As String, lcUID As String, lcPWD As String, lcDatabase As String
            Local loParser As FileIniDataParser, loData As IniData, loSection As KeyDataCollection
            Local lcConnectionStrings As String
            
            loParser    = FileIniDataParser{}
            loData      = loParser.ReadFile("Config.INI")
            
            loSection = loData["ODBC"]
            
            lcODBCDrive = loSection["ODBCDriver"]
            lcServer    = loSection["Server"]
            lcPort      = loSection["Port"]
            lcDatabase  = loSection["Database"]
            lcUID       = loSection["UID"]
            lcPWD       = loSection["PWD"]
            
            Text To lcConnectionStrings Noshow Textmerge Pretext 1 + 2 + 4 + 8
                Driver={<<lcODBCDrive>>};UID=<<lcUID>>;PWD=<<lcPWD>>;Server=<<lcServer>>,<<lcPort>>;Database=<<lcDatabase>>
            Endtext

            This.nStatementHandle = SqlStringConnect(lcConnectionStrings, .t.)
            
            Return
        Endproc    
    Enddefine
End Namespace
