{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wiring";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "git@futurenotfound.com";
        author = "Sean Parsons";
        homepage = "http://github.com/seanparsons/wiring/";
        url = "";
        synopsis = "Wiring, promotion and demotion of types.";
        description = "This package provides the ability to join up or wire instances of types (such as ReaderT, WriterT and RWST) with some semi-automatic conversions.\n\n/ReaderT Example/\n\nWith ReaderT there might be two functions already written that we wish to compose:\n\n> userLookup :: Int -> ReaderT (Resource1, Database1) IO User\n> ordersLookup :: Int -> ReaderT (Database2, Resource1) IO [String]\n\nOrdinarily these could not be used together because their environment type differs,\nwhich reduces the utility of ReaderT as a method of <http://en.wikipedia.org/wiki/Dependency_injection dependency injection>.\n\nHowever with use of the @wire@ method from the @Wirable@ typeclass it becomes possible to use these two together with little pain.\n\n> composedLookup :: Int -> ReaderT (Resource1, Database1, Database2) IO String\n> composedLookup userId = do\n>   user    <- wire \$ userLookup userId\n>   orders  <- wire \$ ordersLookup userId\n>   return \$ describeOrders user orders\n\n/Tuples/\n\nBuilt in are instances of @Wirable@ for transforming tuples to their individual fields, like taking @a@ from a tuple @(a, b, c)@.\n\nAs well as producing new tuples from existing tuples, starting with a tuple of @(a, b, c)@ and returning a tuple of @(c, a)@.\n\n/Other Types/\n\nWriterT and RWST are similarly well supported, including the ability to promote from ReaderT\\/WriterT up to RWST.\n\nSome existing functionality is extended like for instance with the @wiredAsk@ and @wiredTell@ functions.";
        buildType = "Simple";
      };
      components = {
        wiring = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.transformers
            hsPkgs.mtl
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.template-haskell
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.hspec
            ];
          };
        };
      };
    }