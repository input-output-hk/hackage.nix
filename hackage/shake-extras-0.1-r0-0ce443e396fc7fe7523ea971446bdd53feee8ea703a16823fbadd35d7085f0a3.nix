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
      specVersion = "1.10";
      identifier = {
        name = "shake-extras";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Austin Seipp 2012";
      maintainer = "Austin Seipp <mad.one@gmail.com>";
      author = "Austin Seipp <mad.one@gmail.com>";
      homepage = "http://thoughtpolice.github.com/shake-extras";
      url = "";
      synopsis = "Extra utilities for shake build systems";
      description = "This package is designed to add supporting modules for the Shake\nbuild system, that shouldn't be included in the core package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.shake)
          (hsPkgs.cmdargs)
        ];
      };
    };
  }