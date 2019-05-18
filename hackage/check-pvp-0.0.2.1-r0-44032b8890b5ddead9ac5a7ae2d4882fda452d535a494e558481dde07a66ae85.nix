{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { advanced = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "check-pvp"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Import_modules_properly";
      url = "";
      synopsis = "Check whether module and package imports conform to the PVP";
      description = "Check whether the version ranges used in the @Build-Depends@ field\nmatches the style of module imports\naccording to the Package Versioning Policy (PVP).\nSee <http://www.haskell.org/haskellwiki/Package_versioning_policy>.\nThe tool essentially looks for any dependency\nlike @containers >=0.5 && <0.7@\nthat allows the addition of identifiers to modules\nwithin the version range.\nThen it checks whether all module imports from @containers@\nare protected against name clashes\nthat could be caused by addition of identifiers.\n\nRelated:\nThere are programs that check PVP compliance of exports:\n\n* @cabal-bounds@: <http://hackage.haskell.org/package/cabal-bounds>\nsimplifies extending the version bounds in Build-Depends fields.\n\n* @precis@: <http://hackage.haskell.org/package/precis>\n\n* @apidiff@: <http://code.haskell.org/gtk2hs/tools/apidiff/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "check-pvp" = {
          depends = [
            (hsPkgs.Cabal)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        "check-pvp-compiler" = {
          depends = (pkgs.lib).optionals (flags.advanced) [
            (hsPkgs.haskell-packages)
            (hsPkgs.hse-cpp)
            (hsPkgs.Cabal)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.tagged)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.explicit-exception)
            (hsPkgs.transformers)
            (hsPkgs.non-empty)
            (hsPkgs.utility-ht)
            (hsPkgs.base)
            ];
          };
        };
      };
    }