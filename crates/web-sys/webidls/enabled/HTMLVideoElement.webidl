/* -*- Mode: IDL; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/.
 *
 * The origin of this IDL file is
 * http://www.whatwg.org/specs/web-apps/current-work/#the-video-element
 *
 * © Copyright 2004-2011 Apple Computer, Inc., Mozilla Foundation, and
 * Opera Software ASA. You are granted a license to use, reproduce
 * and create derivative works of this document.
 */

[HTMLConstructor]
interface HTMLVideoElement : HTMLMediaElement {
  [CEReactions, SetterThrows]
           attribute unsigned long width;
  [CEReactions, SetterThrows]
           attribute unsigned long height;
  readonly attribute unsigned long videoWidth;
  readonly attribute unsigned long videoHeight;
  [CEReactions, SetterThrows]
           attribute DOMString poster;
};

// https://dvcs.w3.org/hg/html-media/raw-file/default/media-source/media-source.html#idl-def-HTMLVideoElement
partial interface HTMLVideoElement {
  [Func="mozilla::dom::MediaSource::Enabled", NewObject]
  VideoPlaybackQuality getVideoPlaybackQuality();
};
