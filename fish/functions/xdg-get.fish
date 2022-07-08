function xdg-get
  set filename (f)
  set program (xdg-mime query default (xdg-mime query filetype $filename))
  echo "Open with $program"
end
