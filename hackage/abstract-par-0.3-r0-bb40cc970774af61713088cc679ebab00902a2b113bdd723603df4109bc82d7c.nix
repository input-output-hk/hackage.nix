{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "abstract-par";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Ryan Newton 2011-2012";
      maintainer = "Ryan Newton <rrnewton@gmail.com>";
      author = "Ryan Newton";
      homepage = "https://github.com/simonmar/monad-par";
      url = "";
      synopsis = "Type classes generalizing the functionality of the 'monad-par' library.";
      description = "The 'Par' monad(s) offer an alternative\nparallel programming API to that provided by the\n@parallel@ package.\nA 'Par' monad allows the simple description of\nparallel computations, and can be used to add\nparallelism to pure Haskell code.  The basic API\nis straightforward: a @Par@ monad supports forking\nand simple communication in terms of 'IVar's.\nThis module is an interface module only. It\nprovides a number of type clasess, but not an\nimplementation.  The type classes separate different\nlevels of @Par@ functionality.  See the\n\"Control.Monad.Par.Class\" module for more details.\nThe 'monad-par' library is one example of a\nconcrete library providing this interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
        ];
      };
    };
  }