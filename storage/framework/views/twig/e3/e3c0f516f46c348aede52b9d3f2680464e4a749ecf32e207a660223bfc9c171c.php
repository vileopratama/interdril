<?php

/* theme::partials/navigation */
class __TwigTemplate_e1eb96f3c03a2c9f52665dd41f84cc986a6ddd039dc4aa76db7eeeebaa441695 extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!-- Navigation -->
";
        // line 3
        echo $this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute($this->getAttribute(call_user_func_array($this->env->getFunction('structure')->getCallable(), array()), "linkAttributesDropdown", array(0 => array("data-toggle" => "dropdown")), "method"), "listClass", array(0 => "mx-nav-menu"), "method"), "childListClass", array(0 => "sub-menu"), "method"), "selected_class", array(0 => "current-menu-item"), "method"), "dropdown_class", array(0 => "menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-45 mega-menu-main"), "method"), "dropdown_toggle", array(0 => false), "method"), "child_div_class", array(0 => "mega-menu mega-vertical"), "method"), "render", array(), "method");
        // line 11
        echo "
<!-- Navigation -->
<div class=\"mx-nav-right-container\">
\t<ul>
\t\t<li class=\"mx-search-form\">
\t\t\t<a href=\"#\" class=\"header-search-btn\"><i class=\"fa fa-search\"></i><i class=\"fa fa-times-circle-o\"></i></a>
\t\t\t<div class=\"mx-form-search\">
\t\t\t\t<form role=\"search\" class=\"searchform\" method=\"get\" action=\"search.html\">
\t\t\t\t\t<div>
\t\t\t\t\t\t<input class=\"sf-s\" name=\"s\" type=\"text\" placeholder=\"Search ...\" />
\t\t\t\t\t\t<button type=\"submit\" class=\"sf-submit btn btn-theme\"><i class=\"fa fa-search\"></i></button>
\t\t\t\t\t</div>
\t\t\t\t</form>
\t\t\t</div>
\t\t</li>
\t\t<li class=\"responsive-mobile-menu\"><a href=\"#\" class=\"header-responsive-menu-btn\"><i class=\"fa fa-bars\"></i></a></li>
\t</ul>
</div>


";
    }

    public function getTemplateName()
    {
        return "theme::partials/navigation";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  24 => 11,  22 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!-- Navigation -->
{# Showing child page navigation #}
{{ structure()
\t.linkAttributesDropdown({'data-toggle': 'dropdown'})
\t.listClass('mx-nav-menu')
\t.childListClass('sub-menu')
\t.selected_class('current-menu-item')
\t.dropdown_class('menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-45 mega-menu-main')
\t.dropdown_toggle(false)
\t.child_div_class('mega-menu mega-vertical')
\t.render()|raw }}
<!-- Navigation -->
<div class=\"mx-nav-right-container\">
\t<ul>
\t\t<li class=\"mx-search-form\">
\t\t\t<a href=\"#\" class=\"header-search-btn\"><i class=\"fa fa-search\"></i><i class=\"fa fa-times-circle-o\"></i></a>
\t\t\t<div class=\"mx-form-search\">
\t\t\t\t<form role=\"search\" class=\"searchform\" method=\"get\" action=\"search.html\">
\t\t\t\t\t<div>
\t\t\t\t\t\t<input class=\"sf-s\" name=\"s\" type=\"text\" placeholder=\"Search ...\" />
\t\t\t\t\t\t<button type=\"submit\" class=\"sf-submit btn btn-theme\"><i class=\"fa fa-search\"></i></button>
\t\t\t\t\t</div>
\t\t\t\t</form>
\t\t\t</div>
\t\t</li>
\t\t<li class=\"responsive-mobile-menu\"><a href=\"#\" class=\"header-responsive-menu-btn\"><i class=\"fa fa-bars\"></i></a></li>
\t</ul>
</div>


", "theme::partials/navigation", "");
    }
}
