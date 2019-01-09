{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { hruby = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "language-puppet"; version = "0.4.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net";
      url = "";
      synopsis = "Tools to parse and evaluate the Puppet DSL.";
      description = "This is a set of libraries designed to work with the Puppet DSL. It can be used to parse .pp files, compile and interpret them, evaluate the templates. It is still very experimental but is already pretty useful when working with the manifests.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.mtl)
          (hsPkgs.unix)
          (hsPkgs.hslogger)
          (hsPkgs.Glob)
          (hsPkgs.process)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.base16-bytestring)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.iconv)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.aeson)
          (hsPkgs.http-types)
          (hsPkgs.http-conduit)
          (hsPkgs.attoparsec)
          (hsPkgs.failure)
          (hsPkgs.hslua)
          (hsPkgs.vector)
          (hsPkgs.luautils)
          (hsPkgs.transformers)
          (hsPkgs.time)
          (hsPkgs.pcre-utils)
          (hsPkgs.lens)
          ] ++ (pkgs.lib).optional (flags.hruby) (hsPkgs.hruby);
        };
      tests = {
        "test-lexer" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.mtl)
            ];
          };
        "test-expr" = {
          depends = [ (hsPkgs.language-puppet) (hsPkgs.base) (hsPkgs.parsec) ];
          };
        "test-interpreter" = {
          depends = [
            (hsPkgs.language-puppet)
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.text)
            ];
          };
        };
      benchmarks = {
        "bench-lexer" = {
          depends = [ (hsPkgs.language-puppet) (hsPkgs.base) ];
          };
        };
      };
    }