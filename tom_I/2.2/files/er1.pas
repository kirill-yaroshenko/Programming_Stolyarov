Var F : File Of Byte;
Begin
   { Получаем имя файла из командной строки }
   Assign(F, ParamStr(1));
   {$I-}
   Reset(F);
   {$I+}
   If IOResult=0 Then
      WriteLn('Размер файла: ', FileSize(F), ' байт.')
   Else
       WriteLn('Файл не найден.');
End.
