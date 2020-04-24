{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "sink"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Jake McArthur <Jake.McArthur@gmail.com>";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "An alternative to lazy I/O that doesn't conflate\nexecution with evaluation";
      description = "Lazy I/O conflates evaluation with execution; a\nvalue obtained from 'unsafeInterleaveIO' can\nperform side-effects during the evaluation of\npure code. Like lazy I/O, a 'Sink' provides a way\nto obtain the value of the result of an 'IO'\naction before the action has been executed, but\nunlike lazy I/O, it does not enable pure code to\nperform side-effects. Instead, the value is\nexplicitly assigned by a later 'IO' action.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }