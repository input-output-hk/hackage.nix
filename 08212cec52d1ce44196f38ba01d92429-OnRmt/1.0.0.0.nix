{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      brick017 = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "OnRmt";
        version = "1.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Kevin Quick, 2013-2017";
      maintainer = "<quick@sparq.org>";
      author = "Kevin Quick <quick@sparq.org>";
      homepage = "";
      url = "";
      synopsis = "Text UI library for performing parallel remote SSH operations";
      description = "This library provides the ability to coordinate the remote ssh\nexecution of commands on target nodes and display the results in a\nconsole interface.  The console interface can either be a cmdline\n(CLI) or a text interface (TUI), based on brick and vty; support is\nprovided for extension to other UI components as well.\n\nAlmost all of the functionality is provided in the library itself;\nit just needs an executable that will invoke it with the set of\nremote nodes.  See the 'GetRemotes.hs' file for an example: remotes\ncan be of any type that is an instance of @WorkEntry@ with an\nassociated @WorkGroup@ grouping.\n\nThere is an onrmttest executable built that showcases the\nfunctionality using ssh operations to localhost, and a\ncorresponding onrmttestline executable that provides a simple CLI.";
      buildType = "Simple";
    };
    components = {
      "OnRmt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vty)
          (hsPkgs.brick)
          (hsPkgs.itemfield)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.process)
          (hsPkgs.transformers)
          (hsPkgs.void)
          (hsPkgs.vector)
          (hsPkgs.text-zipper)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.string-conversions)
          (hsPkgs.listsafe)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.async)
          (hsPkgs.repl-toolkit)
          (hsPkgs.microlens)
          (hsPkgs.containers)
          (hsPkgs.control-monad-loop)
          (hsPkgs.mtl)
          (hsPkgs.data-default)
        ];
      };
      exes = {
        "onrmtssh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OnRmt)
            (hsPkgs.vty)
            (hsPkgs.brick)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.itemfield)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.void)
            (hsPkgs.vector)
            (hsPkgs.text-zipper)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.string-conversions)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.async)
            (hsPkgs.microlens)
            (hsPkgs.control-monad-loop)
            (hsPkgs.mtl)
            (hsPkgs.data-default)
            (hsPkgs.ssh-known-hosts)
          ];
        };
        "onrmtsample" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OnRmt)
            (hsPkgs.vty)
            (hsPkgs.brick)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.itemfield)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.void)
            (hsPkgs.vector)
            (hsPkgs.text-zipper)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.string-conversions)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.async)
            (hsPkgs.microlens)
            (hsPkgs.control-monad-loop)
            (hsPkgs.mtl)
            (hsPkgs.data-default)
          ];
        };
        "onrmtsamplecli" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.OnRmt)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.void)
            (hsPkgs.vector)
            (hsPkgs.text-zipper)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.string-conversions)
            (hsPkgs.listsafe)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.async)
            (hsPkgs.repl-toolkit)
            (hsPkgs.microlens)
            (hsPkgs.containers)
            (hsPkgs.control-monad-loop)
            (hsPkgs.mtl)
            (hsPkgs.data-default)
          ];
        };
      };
      tests = {
        "test_ops" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.old-locale)
            (hsPkgs.vty)
            (hsPkgs.brick)
            (hsPkgs.itemfield)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.string-conversions)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.async)
            (hsPkgs.vector)
            (hsPkgs.text-zipper)
          ];
        };
      };
    };
  }