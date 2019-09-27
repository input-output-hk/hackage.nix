let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bulletinstalled = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lambdacube-samples"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba.hruska@gmail.com, patai.gergely@gmail.com";
      author = "Csaba Hruska, Gergely Patai";
      homepage = "http://lambdacube3d.wordpress.com/";
      url = "";
      synopsis = "Samples for LambdaCube 3D";
      description = "Executable samples to showcase the capabilities of LambdaCube\n3D. Each sample is a separate executable called\n@lambdacube-\\<samplename\\>@. The following samples are included\n(each is described in a separate blog post):\n\n* 'hello': the cannonical rotating cube\n\n* 'convolutionfilter': a simple Gaussian blur (<http://lambdacube3d.wordpress.com/2013/04/11/optimising-convolution-filters/>)\n\n* 'shadowmapping': variance shadow mapping (<http://lambdacube3d.wordpress.com/2012/10/14/variance-shadow-mapping/>)\n\n* 'cubemap': cube mapped reflection using geometry shaders (<http://lambdacube3d.wordpress.com/2012/10/14/variance-shadow-mapping/>)\n\n* 'bulletexample': integration with Bullet physics through Elerea;\nthis sample is optional due to its dependence on Bullet, and you\nneed to install the package with -fBulletInstalled to enable it.\n(first post: <http://lambdacube3d.wordpress.com/2012/12/20/using-bullet-physics-with-an-frp-approach-part-1/>,\nsecond post: <http://lambdacube3d.wordpress.com/2012/12/20/using-bullet-physics-with-an-frp-approach-part-2/>,\nthird post: <http://lambdacube3d.wordpress.com/2012/12/20/using-bullet-physics-with-an-frp-approach-part-3/>)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdacube-hello" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
            (hsPkgs."vect" or (buildDepError "vect"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."elerea" or (buildDepError "elerea"))
            (hsPkgs."lambdacube-core" or (buildDepError "lambdacube-core"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            (hsPkgs."stb-image" or (buildDepError "stb-image"))
            ];
          buildable = true;
          };
        "lambdacube-shadowmapping" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
            (hsPkgs."vect" or (buildDepError "vect"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."elerea" or (buildDepError "elerea"))
            (hsPkgs."lambdacube-core" or (buildDepError "lambdacube-core"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        "lambdacube-cubemap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
            (hsPkgs."vect" or (buildDepError "vect"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."elerea" or (buildDepError "elerea"))
            (hsPkgs."lambdacube-core" or (buildDepError "lambdacube-core"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        "lambdacube-convolutionfilter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
            (hsPkgs."vect" or (buildDepError "vect"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."elerea" or (buildDepError "elerea"))
            (hsPkgs."lambdacube-core" or (buildDepError "lambdacube-core"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            ];
          buildable = true;
          };
        "lambdacube-bulletexample" = {
          depends = (pkgs.lib).optionals (flags.bulletinstalled) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
            (hsPkgs."vect" or (buildDepError "vect"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."elerea" or (buildDepError "elerea"))
            (hsPkgs."bullet" or (buildDepError "bullet"))
            (hsPkgs."lambdacube-core" or (buildDepError "lambdacube-core"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."OpenGLRaw" or (buildDepError "OpenGLRaw"))
            (hsPkgs."GLFW-b" or (buildDepError "GLFW-b"))
            ];
          buildable = if flags.bulletinstalled then true else false;
          };
        };
      };
    }