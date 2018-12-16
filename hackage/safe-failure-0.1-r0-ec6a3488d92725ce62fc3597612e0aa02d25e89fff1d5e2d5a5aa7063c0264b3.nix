{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      cme = true;
      extensibleexceptions = false;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "safe-failure";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2007-8, Neil Mitchell";
      maintainer = "pepeiborra@gmail.com";
      author = "Neil Mitchell, Jose Iborra (2009), Michael Snoyman (2009)";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/safe/";
      url = "";
      synopsis = "Library for safe functions";
      description = "Partial functions from the base library, such as @head@ and @!!@, modified\nto fail in a @MonadFailure@ monad.\nThese functions can be used to reduce the number of unsafe pattern matches in\nyour code.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.control-monad-failure)
        ] ++ (if flags.extensibleexceptions
          then [
            (hsPkgs.extensible-exceptions)
            (hsPkgs.base)
          ]
          else [
            (hsPkgs.base)
          ] ++ pkgs.lib.optional (flags.cme) (hsPkgs.control-monad-exception));
      };
    };
  }