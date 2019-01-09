{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "aeson-yak"; version = "0.1.1"; };
      license = "MIT";
      copyright = "Copyright (c) Theodore Lief Gannon, 2015";
      maintainer = "tanuki@gmail.com";
      author = "Theodore Lief Gannon";
      homepage = "https://github.com/tejon/aeson-yak";
      url = "";
      synopsis = "Handle JSON that may or may not be a list, or exist";
      description = "According to the standard promoted by Schema.org, the same JSON object\nfield may legally contain an array or a single element, be null, or be\nabsent entirely. This library provides an intermediary data type and\nsupporting functions to help aeson parse and output JSON conforming to this\nfrustrating behavior.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.aeson) ]; };
      };
    }