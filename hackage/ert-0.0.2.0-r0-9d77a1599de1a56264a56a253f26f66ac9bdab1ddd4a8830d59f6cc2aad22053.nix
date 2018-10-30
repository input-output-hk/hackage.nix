{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      dev = false;
      util = true;
      yaml = true;
      regex = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ert";
        version = "0.0.2.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "kayo@illumium.org";
      author = "K.";
      homepage = "https://bitbucket.org/kayo/ert";
      url = "";
      synopsis = "Easy Runtime Templates";
      description = "EJS-like template engine for Haskell.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-expr)
        ] ++ pkgs.lib.optional (flags.regex) (hsPkgs.regex-compat);
      };
      exes = {
        "ert" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ert)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.attoparsec)
          ] ++ pkgs.lib.optional (flags.yaml) (hsPkgs.yaml);
        };
      };
    };
  }