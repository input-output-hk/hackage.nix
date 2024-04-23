{
  "1.0.0.0" = {
    sha256 = "ab6901646d768d49a8edae9350457db4cfa1b24e77f44195ff4bfd78a9e33338";
    revisions = {
      r0 = {
        nix = import ../hackage/kademlia-1.0.0.0-r0-6d2337ce8ece88e19e73389b8c77a5b0fcf02aa1403be3d9b061e7e0f92d6d3d.nix;
        revNum = 0;
        sha256 = "6d2337ce8ece88e19e73389b8c77a5b0fcf02aa1403be3d9b061e7e0f92d6d3d";
      };
      r1 = {
        nix = import ../hackage/kademlia-1.0.0.0-r1-2553e98d53372b8d4947c115dd696e33f526f0304e9ed39566e6beec276ca641.nix;
        revNum = 1;
        sha256 = "2553e98d53372b8d4947c115dd696e33f526f0304e9ed39566e6beec276ca641";
      };
      default = "r1";
    };
  };
  "1.1.0.0" = {
    sha256 = "de03367642be75a42615414d26df1eb09861a807e49544aa6546d70533d55e72";
    revisions = {
      r0 = {
        nix = import ../hackage/kademlia-1.1.0.0-r0-a50d13bc985acda13e17e2b5c6390f18c5362cc15ea38b762a3944c31e86f215.nix;
        revNum = 0;
        sha256 = "a50d13bc985acda13e17e2b5c6390f18c5362cc15ea38b762a3944c31e86f215";
      };
      default = "r0";
    };
  };
}