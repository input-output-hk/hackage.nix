{
  "0.0.0" = {
    sha256 = "8b336a5f5c68d23683b7f69a5fcc02c7a9f869b7570799cf81cd26c37ea70426";
    revisions = {
      r0 = {
        nix = import ../hackage/HSet-0.0.0-r0-8cac036651330ed9b5b8258ab57df7f4712cfbf5667c540f2d1ade591b7eb665.nix;
        revNum = 0;
        sha256 = "8cac036651330ed9b5b8258ab57df7f4712cfbf5667c540f2d1ade591b7eb665";
      };
      r1 = {
        nix = import ../hackage/HSet-0.0.0-r1-b770693689a36273af61e3e66e920158a35760eb7f264cc52d940a3fc4f4692b.nix;
        revNum = 1;
        sha256 = "b770693689a36273af61e3e66e920158a35760eb7f264cc52d940a3fc4f4692b";
      };
      default = "r1";
    };
  };
  "0.0.1" = {
    sha256 = "eba93be5a76581585ae33af6babe9c2718fae307d41989cd36a605d9b0e8d16a";
    revisions = {
      r0 = {
        nix = import ../hackage/HSet-0.0.1-r0-702b7a605bc9646441447a72e20797a6c65d18fee5e3363a831d2285f9e641bc.nix;
        revNum = 0;
        sha256 = "702b7a605bc9646441447a72e20797a6c65d18fee5e3363a831d2285f9e641bc";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "106b1f2415c930595002d6c3ef49f7ae3a6f0c0baa4e5c0d0cb65e421d20e047";
    revisions = {
      r0 = {
        nix = import ../hackage/HSet-0.0.2-r0-24f5ce6e45501634d24378f8e358f80dcd5a8e21ce6634e4da610648d85b1e0f.nix;
        revNum = 0;
        sha256 = "24f5ce6e45501634d24378f8e358f80dcd5a8e21ce6634e4da610648d85b1e0f";
      };
      default = "r0";
    };
  };
}