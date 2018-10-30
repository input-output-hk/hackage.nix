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
      specVersion = "1.9.2";
      identifier = {
        name = "open-union";
        version = "0.3.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "benjamin.foppa@gmail.com";
      author = "Zeke Foppa";
      homepage = "https://github.com/bfops/open-union";
      url = "";
      synopsis = "Extensible, type-safe unions.";
      description = "Extensible, type-safe unions. This package is very new and likely to change.\n\nBasic usage example (language tags ommitted due to <https://github.com/haskell/cabal/issues/774>)\n\n> import Data.OpenUnion\n\n> type MyUnion = Union '[Char, Int, [()]]\n\n> showMyUnion :: MyUnion -> String\n> showMyUnion\n>     =  (\\(c :: Char) -> \"char: \" ++ show c)\n>     @> (\\(i :: Int) -> \"int: \" ++ show i)\n>     @> (\\(l :: [()]) -> \"list length: \" ++ show (length l))\n>     @> (\\(s :: String) -> \"string: \" ++ s)\n>     @> typesExhausted\n\n> main :: IO ()\n> main = do\n>     putStrLn \$ showMyUnion \$ liftUnion (4 :: Int)\n>     putStrLn \$ showMyUnion \$ liftUnion 'a'\n>     putStrLn \$ showMyUnion \$ liftUnion [(), ()]\n\nwhich prints:\n\n> int: 4\n> char: 'a'\n> list length: 2\n\nCasting to an unrelated type does not cause errors;\nIn the above example,`showMyUnion` contains a `String` case despite `MyUnion` not containing\n`String` - superfluous cases are ignored, for the time being.\n\n`typesExhausted` is NOT a catchall. It is a null case, and using it as a catchall\n(or forgetting to provide a certain case, for instance) will result in an error like:\n\n> example.hs:12:8:\n>     Couldn't match type ‘Int : ('[] :\\ [Char])’ with ‘'[]’\n>     Expected type: Union ('[Int] :\\ String) -> String\n>       Actual type: Union '[] -> String\n>     In the second argument of ‘(@>)’, namely ‘typesExhausted’\n>     In the second argument of ‘(@>)’, namely\n>       ‘(\\ (s :: String) -> \"string: \" ++ s) @> typesExhausted’\n\nThe left-hand parts of the `':` (think type-level `(:)`) are the cases that still need to be satisfied.\n\nTrying to lift an incorrect type to a `Union` will cause an error resembling:\n\n> example.hs:20:30:\n>     No instance for (Data.OpenUnion.Internal.LiftToUnion '[] [Char])\n>       arising from a use of ‘liftUnion’\n>     In the second argument of ‘(\$)’, namely ‘liftUnion \"asdf\"’\n>     In the second argument of ‘(\$)’, namely\n>       ‘showMyUnion \$ liftUnion \"asdf\"’\n>     In a stmt of a 'do' block:\n>       putStrLn \$ showMyUnion \$ liftUnion \"asdf\"\n\nThe original use case for this library was code like this (snipped from some record/playback logic):\n\n> type TrackStates = '[Stopped, Recording, Playing]\n>\n> startRecording\n>   :: Union (TrackStates :\\ Recording)\n>   -> ([Note], Union '[Recording])\n\nThe `(:\\\\)` type-level operator is for removal from a set, i.e.\n`startRecording` can be applied to a track in any state except the\n`Recording` state.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-fun)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.type-fun)
            (hsPkgs.open-union)
          ];
        };
      };
    };
  }