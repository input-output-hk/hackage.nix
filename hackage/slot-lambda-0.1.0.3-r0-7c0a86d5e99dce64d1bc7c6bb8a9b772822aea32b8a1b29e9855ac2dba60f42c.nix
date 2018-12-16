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
      specVersion = "1.10";
      identifier = {
        name = "slot-lambda";
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ducis_cn@126.com";
      author = "ducis";
      homepage = "https://github.com/ducis/pa_slot";
      url = "";
      synopsis = "Write lambdas without naming the parameters.";
      description = "Write lambdas without naming the parameters. Example:\n\n@\n[s| ı : ı : _ı : ı : _ı : _ı : _0 : [] |] \\'a\\' \\'b\\' \\'c\\'\n=  (\\\\x y z -> x:y:y:z:z:z:x:[]) \\'a\\' \\'b\\' \\'c\\'\n=  \\\"abbccca\\\"\n@\n\nThe unicode character @ı@(U+0131, not the number @1@!) representing a \\'slot\\' can be input in vim with the digraph \\'i.\\' . @_ı@ stands for the same argument as the immediate left @ı@ does.\nAny suggestions of another unicode character in the 'Letter, Lowercase' category that\n\n1)no one would use as a variable name, and\n\n2)can be easily input in vim\n\nare welcome.\nYou can also use @_0@,@_1@,@_2@,... to refer to the 1st, 2nd, 3rd, ... arguments.\n\nJust @import Syntax.Slot@ and use either @[s| ... |]@ or @[slot| ... |]@, which are the same thing given two names for convenience.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.syb)
          (hsPkgs.vector)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.containers)
        ];
      };
    };
  }