{
  "0.1" = {
    sha256 = "d29607fc47cb11aa301b94c41c8403fe04608a8236f7c344df0aa37045c0b3d2";
    revisions = {
      r0 = {
        nix = import ../hackage/pam-0.1-r0-ed8b074b736550014f23f50f5b2906e2116e1504e84139f324c834945a4e7dee.nix;
        revNum = 0;
        sha256 = "ed8b074b736550014f23f50f5b2906e2116e1504e84139f324c834945a4e7dee";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "fda191cb2d4b957bfc636f7bf1cf9092844c6f94c55fec39725f4700efa99048";
    revisions = {
      r0 = {
        nix = import ../hackage/pam-0.2.0.0-r0-590e7e17c9fae0612281cc8cf5ba91c4aab124ef31a49ed18034458430b49d6b.nix;
        revNum = 0;
        sha256 = "590e7e17c9fae0612281cc8cf5ba91c4aab124ef31a49ed18034458430b49d6b";
      };
      r1 = {
        nix = import ../hackage/pam-0.2.0.0-r1-ebc5c62f18a5df834a6c6d945355d324b6e3ca4c9e6902dc9835be112353a625.nix;
        revNum = 1;
        sha256 = "ebc5c62f18a5df834a6c6d945355d324b6e3ca4c9e6902dc9835be112353a625";
      };
      default = "r1";
    };
  };
}