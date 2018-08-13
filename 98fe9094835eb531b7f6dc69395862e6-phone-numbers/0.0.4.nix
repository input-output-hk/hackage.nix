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
        name = "phone-numbers";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Christian Marie <christian@ponies.io>";
      author = "Christian Marie <christian@ponies.io>";
      homepage = "https://github.com/christian-marie/phone-numbers";
      url = "";
      synopsis = "Haskell bindings to the libphonenumber library";
      description = "Basic phone number parsing, largely incomplete, please submit a pull\nrequest or issue if you'd like more exposed.";
      buildType = "Simple";
    };
    components = {
      "phone-numbers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [
          (pkgs."phonenumber")
          (pkgs."stdc++")
        ];
      };
    };
  }