{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      development = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "shake-google-closure-compiler";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/shake-google-closure-compiler#readme";
      url = "";
      synopsis = "Shake rules for the Google closure compiler";
      description = "Build rules for simplified builds with the Google closure compiler";
      buildType = "Simple";
    };
    components = {
      "shake-google-closure-compiler" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.shake)
          (hsPkgs.directory)
        ];
      };
    };
  }