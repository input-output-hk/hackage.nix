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
        name = "exists";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2011 Gábor Lehel";
      maintainer = "Gábor Lehel <illissius@gmail.com>";
      author = "Gábor Lehel";
      homepage = "http://github.com/glehel/exists";
      url = "";
      synopsis = "Existential datatypes holding evidence of constraints";
      description = "This package contains:\n\n* Existential datatypes for holding evidence of constraints on types of kind @*@ and @* -> *@;\n\n* Type classes for existential datatypes holding evidence of constraints on types of kind @*@ and @* -> *@;\n\n* Completely useless existential datatypes holding evidence of no constraint on types of kind @*@ and @* -> *@;\n\n* Assorted type class instances for the above;\n\n* A type-level combinator for combining constraint constructors.\n\nSome of these should maybe be split off into separate packages.\n\n\"Data.Exists\" is the important module, the rest are peripheral.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
          (hsPkgs.comonad)
          (hsPkgs.comonads-fd)
          (hsPkgs.pointed)
        ];
      };
    };
  }