UPDATE tblAutos
SET AutoRating = ( SELECT MAX(AutoRating) FROM tblAutos)
WHERE AutoID = 10