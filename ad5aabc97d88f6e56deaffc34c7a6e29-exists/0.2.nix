{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "exists";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2012 Gábor Lehel";
        maintainer = "Gábor Lehel <illissius@gmail.com>";
        author = "Gábor Lehel";
        homepage = "http://github.com/glehel/exists";
        url = "";
        synopsis = "Existential datatypes holding evidence of constraints";
        description = "This package contains:\n\n* Existential datatypes for holding evidence of constraints on types of kind @*@ and @* -> *@;\n\n* Type classes for existential datatypes holding evidence of constraints on types of kind @*@ and @* -> *@;\n\n* Completely useless existential datatypes holding evidence of no constraint on types of kind @*@ and @* -> *@;\n\n* Assorted type class instances for the above;\n\n* A type-level combinator for combining constraint constructors.\n\n(Some of these might be better off as separate packages.)\n\n\"Data.Exists\" has most of the important things.\n\nMinimum GHC: 7.4\n\nChanges in 0.2:\n\n* Removed @Comonad@-related things (they were probably useless anyways)\n\n* Added @Data.Exists.CPS@";
        buildType = "Simple";
      };
      components = {
        exists = {
          depends  = [
            hsPkgs.base
            hsPkgs.contravariant
          ];
        };
      };
    }