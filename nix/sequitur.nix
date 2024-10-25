{
  "0.1.0.0" = {
    sha256 = "255fd6efb3509551b92b9a662a1cef0950ae2a4c3cfabb2a946d892a0f263b48";
    revisions = {
      r0 = {
        nix = import ../hackage/sequitur-0.1.0.0-r0-75f0a8560b1aa03569f98cd8c3698c06e46f81c6b5f0452e49f283ce7f5297f5.nix;
        revNum = 0;
        sha256 = "75f0a8560b1aa03569f98cd8c3698c06e46f81c6b5f0452e49f283ce7f5297f5";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "05052553d8296a4393eefd115995186883bfe66154cdfcab5247cde8e1ec68cc";
    revisions = {
      r0 = {
        nix = import ../hackage/sequitur-0.2.0.0-r0-af7eb5e503a665dc0c537709f0722a010b035f1f8204e4325aba7708632f5a64.nix;
        revNum = 0;
        sha256 = "af7eb5e503a665dc0c537709f0722a010b035f1f8204e4325aba7708632f5a64";
      };
      r1 = {
        nix = import ../hackage/sequitur-0.2.0.0-r1-d10104cc400cb27b579680130bca5225051e46ea82a0272f10aae4ce51f9b2d0.nix;
        revNum = 1;
        sha256 = "d10104cc400cb27b579680130bca5225051e46ea82a0272f10aae4ce51f9b2d0";
      };
      default = "r1";
    };
  };
}