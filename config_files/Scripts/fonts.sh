for family in serif sans-serif monospace Arial Helvetica Verdana "Times New Roman" "Courier New"; do
  echo -n "$family: "
  fc-match "$family"
done
