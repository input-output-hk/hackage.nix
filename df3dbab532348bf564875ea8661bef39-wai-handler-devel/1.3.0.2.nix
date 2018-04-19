{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "wai-handler-devel";
          version = "1.3.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "http://github.com/yesodweb/wai";
        url = "";
        synopsis = "WAI server that automatically reloads code after modification.";
        description = "This handler automatically reloads your source code upon any changes. It works by using the hint package, essentially embedding GHC inside the handler. The handler (both the executable and library) takes three arguments: the port to listen on, the module name containing the application function, and the name of the function.\n\nOne major note: the type of the application is most likely not what you expect. A common case for WAI applications is having a withApplication function, and this library assumes this is the case. Therefore, the type signature of your application function must be:\n\n> withYourApp :: (Application -> IO ()) -> IO ()";
        buildType = "Simple";
      };
      components = {
        wai-handler-devel = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.http-types
            hsPkgs.warp
            hsPkgs.directory
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.hint
            hsPkgs.text
            hsPkgs.old-time
            hsPkgs.transformers
            hsPkgs.attoparsec
          ];
        };
        exes = {
          wai-handler-devel = {
            depends  = [ hsPkgs.cmdargs ];
          };
          wai-handler-devel-unwatched = {
            depends  = [ hsPkgs.cmdargs ];
          };
        };
      };
    }