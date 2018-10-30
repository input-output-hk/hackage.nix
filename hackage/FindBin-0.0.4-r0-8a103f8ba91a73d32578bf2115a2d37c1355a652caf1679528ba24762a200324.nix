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
      specVersion = "0";
      identifier = {
        name = "FindBin";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2008-2011 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "https://github.com/audreyt/findbin";
      url = "";
      synopsis = "Locate directory of original program";
      description = "This module locates the full directory to the running program,\nto allow the use of paths relative to it.\nFindBin supports invocation of Haskell programs via \"ghci\",\nvia \"runhaskell/runghc\", as well as compiled as an executable.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
    };
  }