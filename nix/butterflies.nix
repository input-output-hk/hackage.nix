{
  "0.3.0.1" = {
    sha256 = "631cdc6b4e299c14f2687cb6ed7baab5b0ae353aa34fb6f09e46594a9a93f235";
    revisions = {
      r0 = {
        nix = import ../hackage/butterflies-0.3.0.1-r0-e3fbd6a4b2941f2a2130e4e0f4d30364f3c0b144a0b1ad1da31d8024eecff4a9.nix;
        revNum = 0;
        sha256 = "e3fbd6a4b2941f2a2130e4e0f4d30364f3c0b144a0b1ad1da31d8024eecff4a9";
      };
      default = "r0";
    };
  };
  "0.3.0.2" = {
    sha256 = "615497e08c16b00dec7435a87dbd279bbe94832423d91b7cff201afcf29ede6b";
    revisions = {
      r0 = {
        nix = import ../hackage/butterflies-0.3.0.2-r0-929160e1923252b200f2d86cbe1c9cfa90784c3c10ea677f711be704525b9547.nix;
        revNum = 0;
        sha256 = "929160e1923252b200f2d86cbe1c9cfa90784c3c10ea677f711be704525b9547";
      };
      r1 = {
        nix = import ../hackage/butterflies-0.3.0.2-r1-c9fe444ee620b8201de7550b9fd7a66f3a378be47964082b5a215c27ca60adf7.nix;
        revNum = 1;
        sha256 = "c9fe444ee620b8201de7550b9fd7a66f3a378be47964082b5a215c27ca60adf7";
      };
      default = "r1";
    };
  };
}