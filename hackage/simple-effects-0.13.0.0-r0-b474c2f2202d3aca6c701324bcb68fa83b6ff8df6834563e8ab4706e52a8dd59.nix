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
        name = "simple-effects";
        version = "0.13.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Luka Horvat";
      maintainer = "luka.horvat9@gmail.com";
      author = "Luka Horvat";
      homepage = "https://gitlab.com/LukaHorvat/simple-effects";
      url = "";
      synopsis = "A simple effect system that integrates with MTL";
      description = "Some of the things you can do with this package:\n\n* Declare and check which side-effects your function uses\n* Dependency injection\n* Test effectful code\n* Avoid the \\(n \\times k\\) instance problem\n* Define custom effects with very little programming overhead\n\n=== Declare and check which side-effects your function uses\n\nThe library provides a nice, declarative way of specifying exactly what your monadic function\ndoes.\n\n> getProductAndWriteToFile :: MonadEffects '[Database, FileSystem] m => ProductId -> FilePath -> m ()\n\nThis way you can be sure that your @harmlessFunction@ doesn't do unexpected things behind your\nback. The compiler makes sure that all the effects are accounted for in the function's type.\n\n=== Dependency injection\n\nFunctions are not tied to any specific implementation of an effect meaning you can swap out\ndifferent implementations without changing your code. Code like this\n\n> myFunction :: MonadEffects '[Time, Logging] m => m ()\n> myFunction = do\n>     t <- getCurrentTime\n>     log (show t)\n\nis effectively the same as\n\n> myFunction :: Monad m => m ZonedTime -> (String -> m ()) -> m ()\n> myFunction getCurrentTime log = do\n>     t <- getCurrentTime\n>     log (show t)\n\nbut the library does all the parameter passing for you. And just like you'd be able to\nprovide any implementation as @getCurrentTime@ and @log@ parameters you can do the same with\nsimple effects.\n\n> myFunction\n>     & implement (TimeMethods someCurrentTimeImplementation)\n>     & implement (LoggingMethods someLoggingImplementation)\n\n=== Test effectful code\n\nEasily provide dummy implementations of your effects to prevent missle-launching during testing.\n\n> myEffectfulFunction :: MonadEffects '[Database, Missiles] m => m Int\n>\n> main = do\n>     conn <- connectToDb \"connStr\"\n>     myEffectfulFunction\n>         & implement (realDatabase conn)\n>         & implement (MissilesMethods (launchMissles \"access codes\"))\n>\n> spec = do\n>     res <- myEffectfulFunction\n>         & implement (fakeDb Map.empty)\n>         & implement (MissilesMethods (print \"Totally launching missiles\"))\n>     when (res /= 42) (error \"Test failed!\")\n\n=== Avoid the \\(n \\times k\\) instance problem\n\nAny effect you define is automatically liftable through any transformer. Most @MonadX@ instances\nyou'd write would look like @func a b c = lift (func a b c)@, so why would you have to write them\nyourself? @simple-effects@ does it for you using an overlappable instance.\n\nWhat about effects that aren't that simple? Each effect can specify a constraint on the transformers\nthat it can be lifted through and a mechanism that does the lifting. So you get all the benefits\nof automatic lifting of simple effects and retain all of the flexibility of complex ones.\n\n=== Define custom effects with very little programming overhead\n\nLets say we need a way to get coordinates for some address. Here's how we'd declare that\nfunctionality.\n\n@\ndata Geolocation m = GeolocationMethods\n&#32;   &#x7b; _getLocation :: Address -> m Coordinates &#x7d;\n&#32;   deriving (Generic, Effect)\ngetLocation :: MonadEffect Geolocation m => Address -> m Coordinates\ngetLocation = _getLocation effect\n@\n\nThat's all you need to start using your effect in functions.\n\n> getUsersLocation :: (MonadEffect Geolocation m, MonadIO m) => m Coordinates\n> getUsersLocation = do\n>     liftIO \$ putStrLn \"Please enter your address:\"\n>     addr <- liftIO readLn\n>     getLocation addr\n\n==== <Tutorial-T1_Introduction.html Check out the tutorial modules for more details>\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.list-t)
          (hsPkgs.array)
          (hsPkgs.MonadRandom)
          (hsPkgs.exceptions)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.async)
        ];
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.simple-effects)
          ];
        };
      };
      benchmarks = {
        "bench-effects" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.simple-effects)
          ];
        };
      };
    };
  }