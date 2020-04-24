{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "lambdacube-core"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba (dot) hruska (at) gmail (dot) com";
      author = "Csaba Hruska, Gergely Patai";
      homepage = "http://lambdacube3d.wordpress.com/";
      url = "";
      synopsis = "LambdaCube 3D is a domain specific language and library that makes it possible to program GPUs in a purely functional style.";
      description = "LambdaCube 3D is a domain specific language and library that makes\nit possible to program GPUs in a purely functional style.\nProgramming with LambdaCube constitutes of composing a data-flow\ndescription, which is compiled into a specialised library. The\nlanguage provides a uniform way to define shaders and compositor\nchains by treating both streams and framebuffers as first-class\nvalues.\n\nAs a user of the library you only need to import the \"LC_API\" and\n\"LC_Mesh\" modules. You should check out the pointers at <http://lambdacube3d.wordpress.com/getting-started/>\nto understand the principle behind the library, and also have a good look\nat the @lambdacube-samples@ package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."OpenGLRaw" or ((hsPkgs.pkgs-errors).buildDepError "OpenGLRaw"))
          (hsPkgs."bitmap" or ((hsPkgs.pkgs-errors).buildDepError "bitmap"))
          (hsPkgs."prettyclass" or ((hsPkgs.pkgs-errors).buildDepError "prettyclass"))
          (hsPkgs."language-glsl" or ((hsPkgs.pkgs-errors).buildDepError "language-glsl"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }