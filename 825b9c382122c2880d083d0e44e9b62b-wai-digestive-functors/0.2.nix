{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "wai-digestive-functors";
        version = "0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "© 2013 Stephen Paul Weber";
      maintainer = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      author = "Stephen Paul Weber <singpolyma@singpolyma.net>";
      homepage = "https://github.com/singpolyma/wai-digestive-functors";
      url = "";
      synopsis = "Helpers to bind digestive-functors onto wai requests";
      description = "Allows forms build with 'digestive-functors' to easy get their data\nout of wai requests.";
      buildType = "Simple";
    };
    components = {
      "wai-digestive-functors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-util)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.digestive-functors)
        ];
      };
    };
  }