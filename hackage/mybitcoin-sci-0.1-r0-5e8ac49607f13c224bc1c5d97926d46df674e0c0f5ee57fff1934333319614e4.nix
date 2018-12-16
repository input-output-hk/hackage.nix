{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mybitcoin-sci";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lemmih@gmail.com";
      author = "Lemmih";
      homepage = "";
      url = "";
      synopsis = "Binding to mybitcoin.com's Shopping Cart Interface.";
      description = "See <http://bitcoin.org> and <http://mybitcoin.com> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.curl)
          (hsPkgs.cgi)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.split)
          (hsPkgs.directory)
        ];
      };
    };
  }