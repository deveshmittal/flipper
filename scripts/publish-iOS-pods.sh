#!/usr/bin/env bash
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the LICENSE file
# in the root directory of this source tree.
set -e

# source ~/.rvm/scripts/rvm
# rvm use default

pod trunk push ./FlipperKit.podspec --use-libraries --allow-warnings --silent --skip-import-validation --swift-version=4.0
pod trunk push ./Flipper.podspec --use-libraries --allow-warnings --silent --skip-import-validation
