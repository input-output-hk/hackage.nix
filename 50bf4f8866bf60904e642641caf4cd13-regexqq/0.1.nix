{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "regexqq";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Matt Morrow";
        maintainer = "Matt Morrow <morrow@jypsis.com>";
        author = "Matt Morrow";
        homepage = "";
        url = "";
        synopsis = "A quasiquoter for PCRE regexes.";
        description = "> [\$rx|([aeiou]).*(er|ing|tion)([\\.,!\\?]*)\$|] \"helloing.!?!?!\"\n> Just [\"elloing.!?!?!\",\"e\",\"ing\",\".!?!?!\"]\n>\n> ghci> tail `fmap` [\$rx|^([+-])?([0-9]+)\\.([0-9]+)|] (show \$ negate pi)\n> Just [\"-\",\"3\",\"141592653589793\"]\n>\n> ghci> maybe [] tail \$ [\$rx|^([+-])?([0-9]+)\\.([0-9]+)|] (show \$ negate pi)\n> [\"-\",\"3\",\"141592653589793\"]";
        buildType = "Simple";
      };
      components = {
        regexqq = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.pcre-light
          ];
        };
      };
    }