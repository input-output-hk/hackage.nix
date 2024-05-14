{
  "2.0" = {
    sha256 = "3e11a32eb84f914a62d3c9aa69afa883997edeba36ad20ffb9473865bd139763";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-rum-2.0-r0-16521b2fd44911dceb7c68b7dbf638b5c7b340bd2de940057d535cb63d1df16a.nix;
        revNum = 0;
        sha256 = "16521b2fd44911dceb7c68b7dbf638b5c7b340bd2de940057d535cb63d1df16a";
      };
      r1 = {
        nix = import ../hackage/amazonka-rum-2.0-r1-3f7b327dd84a763c7207c27d2ce71d2000d6b63704c164c20da2b76d50c3a4d3.nix;
        revNum = 1;
        sha256 = "3f7b327dd84a763c7207c27d2ce71d2000d6b63704c164c20da2b76d50c3a4d3";
      };
      default = "r1";
    };
  };
}