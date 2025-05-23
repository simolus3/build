// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
import 'package:build/build.dart';
// ignore: implementation_imports
import 'package:build_runner_core/src/asset_graph/node.dart';
import 'package:build_test/build_test.dart';
import 'package:crypto/crypto.dart';

AssetNode makeAssetNode([
  String? assetIdString,
  List<AssetId>? outputs,
  Digest? digest,
]) {
  var id = makeAssetId(assetIdString);
  return AssetNode.source(
    id,
    digest: digest,
    outputs: outputs,
    primaryOutputs: outputs,
  );
}
