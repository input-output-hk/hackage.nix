{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "natural-sort";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "2010 John Millikin <jmillikin@gmail.com>";
        maintainer = "John Millikin <jmillikin@gmail.com>";
        author = "John Millikin <jmillikin@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "User-friendly text collation";
        description = "The built-in comparisons for textual data are based on Unicode ordinals. This\ndoes not match most every-day sorting algorithms. For example,\n\\\"z10.txt\\\" is sorted after \\\"z2.txt\\\" by users, but before it by\nna&#239;ve algorithms.\n\nThis package provides an implementation of \\\"natural sort\\\", which more\nclosely matches user expectations.\n\nSee also: <http://www.davekoelle.com/alphanum.html>";
        buildType = "Simple";
      };
      components = {
        natural-sort = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.text
            hsPkgs.bytestring
          ];
        };
      };
    }