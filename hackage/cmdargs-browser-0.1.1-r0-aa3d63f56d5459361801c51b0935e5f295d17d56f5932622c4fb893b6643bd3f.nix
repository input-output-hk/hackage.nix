{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cmdargs-browser";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2011-2012";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/cmdargs/";
      url = "";
      synopsis = "Helper to enter cmdargs command lines using a web browser";
      description = "Used in conjunction with a cmdargs enabled program to enter flags using a web browser,\nvia the cmdargs helper programs mechanism.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cmdargs-browser" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.filepath)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.http-types)
            (hsPkgs.wai)
            (hsPkgs.wai-handler-launch)
            (hsPkgs.cmdargs)
          ];
        };
      };
    };
  }