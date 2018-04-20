{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mathlink";
          version = "2.0.0.7";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Tracy Wadleigh 2009";
        maintainer = "<tracy.wadleigh@gmail.com>";
        author = "Tracy Wadleigh";
        homepage = "http://community.haskell.org/~TracyWadleigh/mathlink";
        url = "";
        synopsis = "Write Mathematica packages in Haskell";
        description = "Makes it easy to write /Mathematica/ packages in Haskell. Just write some\nfunctions and provide a package specification in a simple DSL that\nmimics that of /Mathematica/'s @mprep@ utility.\n\nData marshaling is accomplished via the 'MLGet' and 'MLPut' classes, which\nspecify types that that can be read from or written to the /MathLink/\nconnection. Instances of these classes are provided for the obvious\nstandard data types, including tuples, lists, 'Array's and 'UArray's.\n\nA Haskell function that is to be exposed to /Mathematica/ has the type\nsignature @('MLGet' a, 'MLPut' b) => a -> IO b@.\n\nA simple example of a /Mathematica/ package:\n\n@\nimport Foreign.MathLink\n\n\\-- define a function\naddTwo :: (Int,Int) -> IO Int\naddTwo (x,y) = return \$ x+y\n\n\\-- specify a package\nspec :: MLSpec\nspec =\n\\    -- start a package definition\n\\  [ Eval \$ \\\"BeginPackage\\\":\\@[St \\\"Test\\`\\\"]\n\n\\    -- define a usage message for the public symbol\n\\  , DeclMsg \\\"AddTwo\\\" \\\"usage\\\" \\\"AddTwo[..] adds a pair of numbers\\\"\n\n\\    -- open a new (private) namespace\n\\  , Eval \$ \\\"Begin\\\":\\@[St \\\"\\`Private\\`\\\"]\n\n\\    -- declare the function\n\\  , DeclFn &#123;\n\\      callPattern = \\\"AddTwo[x_Integer,y_Integer]\\\"\n\\    , argPattern = \\\"&#123;x,y&#125;\\\"\n\\    , func = addTwo\n\\    &#125;\n\n\\    -- close the namespaces\n\\  , Eval \$ \\\"End\\\":\\@[]\n\\  , Eval \$ \\\"EndPackage\\\":\\@[]\n\\  ]\n\n\\-- runs the /MathLink/ connection\nmain :: IO ()\nmain = runMathLink spec\n@";
        buildType = "Custom";
      };
      components = {
        mathlink = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.haskell98
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.ix-shapable
          ];
        };
      };
    }