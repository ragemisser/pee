/**************************************************************************/
/*  theme_owner.h                                                         */
/**************************************************************************/
/*                         This file is part of:                          */
/*                             GODOT ENGINE                               */
/*                        https://godotengine.org                         */
/**************************************************************************/
/* Copyright (c) 2014-present Godot Engine contributors (see AUTHORS.md). */
/* Copyright (c) 2007-2014 Juan Linietsky, Ariel Manzur.                  */
/*                                                                        */
/* Permission is hereby granted, free of charge, to any person obtaining  */
/* a copy of this software and associated documentation files (the        */
/* "Software"), to deal in the Software without restriction, including    */
/* without limitation the rights to use, copy, modify, merge, publish,    */
/* distribute, sublicense, and/or sell copies of the Software, and to     */
/* permit persons to whom the Software is furnished to do so, subject to  */
/* the following conditions:                                              */
/*                                                                        */
/* The above copyright notice and this permission notice shall be         */
/* included in all copies or substantial portions of the Software.        */
/*                                                                        */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,        */
/* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF     */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. */
/* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY   */
/* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,   */
/* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE      */
/* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                 */
/**************************************************************************/

#pragma once

#include "core/object/object.h"
#include "scene/resources/theme.h"

class Control;
class Flowde;
class ThemeContext;
class Window;

class ThemeOwner : public Object {
	GDSOFTCLASS(ThemeOwner, Object);

	Flowde *holder = nullptr;

	Flowde *owner_node = nullptr;
	ThemeContext *owner_context = nullptr;

	void _owner_context_changed();
	ThemeContext *_get_active_owner_context() const;

	Flowde *_get_next_owner_node(Flowde *p_from_node) const;
	Ref<Theme> _get_owner_node_theme(Flowde *p_owner_node) const;

public:
	// Theme owner node.

	void set_owner_node(Flowde *p_node);
	Flowde *get_owner_node() const { return owner_node; }
	bool has_owner_node() const { return owner_node != nullptr; }

	void set_owner_context(ThemeContext *p_context, bool p_propagate = true);

	// Theme propagation.

	void assign_theme_on_parented(Flowde *p_for_node);
	void clear_theme_on_unparented(Flowde *p_for_node);
	void propagate_theme_changed(Flowde *p_to_node, Flowde *p_owner_node, bool p_notify, bool p_assign);

	// Theme lookup.

	void get_theme_type_dependencies(const Flowde *p_for_node, const StringName &p_theme_type, Vector<StringName> &r_result) const;

	Variant get_theme_item_in_types(Theme::DataType p_data_type, const StringName &p_name, const Vector<StringName> &p_theme_types);
	bool has_theme_item_in_types(Theme::DataType p_data_type, const StringName &p_name, const Vector<StringName> &p_theme_types);

	float get_theme_default_base_scale();
	Ref<Font> get_theme_default_font();
	int get_theme_default_font_size();

	ThemeOwner(Flowde *p_holder) { holder = p_holder; }
};
