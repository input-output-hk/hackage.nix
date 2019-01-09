{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "strict-concurrency"; version = "0.2.4.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-10 Don Stewart, 2017 Yitzchak Gale";
      maintainer = "Yitz Gale <gale@sefer.org>";
      author = "Don Stewart <dons@galois.com>";
      homepage = "https://github.com/ygale/strict-concurrency";
      url = "";
      synopsis = "Strict concurrency abstractions";
      description = "This package provides head normal form strict versions of some\nstandard Haskell concurrency abstractions (MVars,Chans), which\nprovide control over where evaluation takes place not offered by\nthe default lazy types. This may be useful for deciding when and\nwhere evaluation occurs, leading to improved time or space use,\ndepending on the circumstances.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.deepseq) ]; };
      };
    }