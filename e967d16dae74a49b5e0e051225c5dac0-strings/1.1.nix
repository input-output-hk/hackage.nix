{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "strings";
          version = "1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
        homepage = "http://hub.darcs.net/scravy/strings";
        url = "";
        synopsis = "Functions for working with strings, including Text, ByteString, etc.";
        description = "This package provides various functions for working with strings,\nsuch as @join@, @split@, @toUppercase@, etc.\n\nThe functions in this package work with all kinds of strings\nsuch as Text, ByteString, String, and their respective lazy counter\nparts. There is also an interface which is agnostic of the underlying\nstring type.\n\n[@v1.0.2@] Fixed an issue with @strSplitAll@. Applied to the empty string\nit should return an empty list, but it returned a list containing\na single empty string. It now returns correctly the empty list.\n\n[@v1.1@] Added @strToUpper@, @strToLower@, @strCapitalize@, @strCons@,\nand  @strMap@. Also @sCapitalize@, @sCons@, and @sMap@.";
        buildType = "Simple";
      };
      components = {
        "strings" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
      };
    }