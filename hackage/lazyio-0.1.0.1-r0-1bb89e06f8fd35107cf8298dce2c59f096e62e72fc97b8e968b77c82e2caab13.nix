{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "lazyio"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Lazy_IO";
      url = "";
      synopsis = "Run IO actions lazily while respecting their order";
      description = "Run IO actions lazily while respecting their order.\nRunning a value of the LazyIO monad in the IO monad is like starting a thread\nwhich is however driven by its output.\nThat is, the LazyIO action is only executed as far as necessary\nin order to provide the required data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."unsafe" or ((hsPkgs.pkgs-errors).buildDepError "unsafe"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."special-functors" or ((hsPkgs.pkgs-errors).buildDepError "special-functors"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "test" = { buildable = if !flags.buildtests then false else true; };
        };
      };
    }