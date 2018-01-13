def strip_control_codes:
 explode | map(select(. > 31 and . != 127)) | implode;
