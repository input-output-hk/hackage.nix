{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "yap";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ross Paterson <ross@soi.city.ac.uk>";
        author = "Ross Paterson <ross@soi.city.ac.uk>";
        homepage = "";
        url = "";
        synopsis = "yet another prelude - a simplistic refactoring with algebraic\nclasses";
        description = "A simple refactoring of the Prelude numeric classes,\nattempting backwards compatibility for clients by defining\na few algebraic classes as superclasses of the Haskell 98\nnumeric classes.  This yields the following class hierarchy\n(grey classes are unchanged):\n\n<<http://code.haskell.org/~ross/images/hierarchy-2.png>>\n\n\"Prelude.YAP\" is an almost-compatible replacement\nfor the standard Haskell Prelude, as long as you're\nnot defining instances of the numeric classes\n(though defaulting will be affected).\nWhen importing it, turn on @RebindableSyntax@.\n\n\"Data.YAP.Algebra\" contains just the new classes;\nyou'll need to import it if you want access to the\nnew names, including to define instances.\n\nOther modules contain some example instances, including\nfor the existing types @Complex@ and @Ratio@.\n\nHistory:\n\n* 0.0: initial version\n\n* 0.1: moved 'fromRational' back to 'Fractional', as it\nisn't well-behaved for all fields.  Removed @realToField@.\n\n* 0.2: removed 'Eq' and 'Show' constraints from 'Num',\nfollowing @base-4.5@.";
        buildType = "Simple";
      };
      components = {
        yap = {
          depends  = [ hsPkgs.base ];
        };
      };
    }