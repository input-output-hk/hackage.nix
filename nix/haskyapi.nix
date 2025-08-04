{
  "0.0.0.1" = {
    sha256 = "3db628518b88a6cd1a0d3fe28f06198c3a91407ff039d4c7d86eb7673a381a32";
    revisions = {
      r0 = {
        nix = import ../hackage/haskyapi-0.0.0.1-r0-a54ef0e71a0283c31d0426d0347c09bf5c20851ca1e4c279ace62297ac14c35e.nix;
        revNum = 0;
        sha256 = "a54ef0e71a0283c31d0426d0347c09bf5c20851ca1e4c279ace62297ac14c35e";
      };
      r1 = {
        nix = import ../hackage/haskyapi-0.0.0.1-r1-8dcfcc563d21bd3d3dc1e9f80e2bc435c49f73c605c99b45ae01b671dc259ea3.nix;
        revNum = 1;
        sha256 = "8dcfcc563d21bd3d3dc1e9f80e2bc435c49f73c605c99b45ae01b671dc259ea3";
      };
      default = "r1";
    };
  };
  "0.0.0.2" = {
    sha256 = "d8e3fda190374679ee6d2092ea5a5ed2572c638d2d5cf4fa4917d15cffcfb3e8";
    revisions = {
      r0 = {
        nix = import ../hackage/haskyapi-0.0.0.2-r0-8a0194dd3e9054f99f399d1103743967533d9d1496345143ab2b5c3ac0b37fd0.nix;
        revNum = 0;
        sha256 = "8a0194dd3e9054f99f399d1103743967533d9d1496345143ab2b5c3ac0b37fd0";
      };
      r1 = {
        nix = import ../hackage/haskyapi-0.0.0.2-r1-c081fa35a4fe2f6beae4798cc9507553b7cc8c1d556f360aa6575d16fc72f451.nix;
        revNum = 1;
        sha256 = "c081fa35a4fe2f6beae4798cc9507553b7cc8c1d556f360aa6575d16fc72f451";
      };
      r2 = {
        nix = import ../hackage/haskyapi-0.0.0.2-r2-b72d57626f2dd536eded4e4297f741d5ca31d4e705c0785b95cf5caa17e74c07.nix;
        revNum = 2;
        sha256 = "b72d57626f2dd536eded4e4297f741d5ca31d4e705c0785b95cf5caa17e74c07";
      };
      r3 = {
        nix = import ../hackage/haskyapi-0.0.0.2-r3-df40c2e63c524aa89fb6d388d0d0f613a939ebe807a8da4d540e630faef6696c.nix;
        revNum = 3;
        sha256 = "df40c2e63c524aa89fb6d388d0d0f613a939ebe807a8da4d540e630faef6696c";
      };
      default = "r3";
    };
  };
}