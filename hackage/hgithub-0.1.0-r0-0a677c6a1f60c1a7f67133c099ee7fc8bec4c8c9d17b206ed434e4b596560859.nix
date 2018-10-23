{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hgithub";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thu@hypered.be";
      author = "Vo Minh Thu";
      homepage = "https://github.com/noteed/hgithub";
      url = "";
      synopsis = "Haskell bindings to the GitHub API";
      description = "Haskell bindings to the GitHub API";
      buildType = "Simple";
    };
    components = {
      "hgithub" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.http-enumerator)
          (hsPkgs.text)
        ];
      };
      exes = {
        "hgithub" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.hgithub)
          ];
        };
      };
    };
  }