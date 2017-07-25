<?php

/* theme::partials/scripts */
class __TwigTemplate_1f3c16361ec6bfe0fc575bcde1786271574f2239fa27b040e2771ccd3942f26e extends TwigBridge\Twig\Template
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
        // line 2
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::js/vendor/jquery1.12.4.js"));
        echo "
";
        // line 3
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::js/vendor/bootstrap.min.js"));
        echo "
";
        // line 4
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::bower/js_composer/js/isotope.pkgd.min.js"));
        echo "

";
        // line 6
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::bower/fancybox/lib/jquery.mousewheel.pack.js"));
        echo "
";
        // line 7
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::bower/fancybox/source/jquery.fancybox.pack.js"));
        echo "
";
        // line 8
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::bower/fancybox/source/helpers/jquery.fancybox-thumbs.js"));
        echo "
";
        // line 9
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::js/vendor/vue.min.js"));
        echo "
";
        // line 10
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::js/vendor/jquery-migrate.min.js"));
        echo "
";
        // line 11
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::js/theme/jquery.theme.js"));
        echo "
";
        // line 12
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "theme::js/theme/wp-embed.min.js"));
        echo "

";
        // line 14
        echo call_user_func_array($this->env->getFunction('html_script')->getCallable(), array("script", call_user_func_array($this->env->getFunction('asset_path')->getCallable(), array("path", "theme.js", array(0 => "min")))));
        echo "


";
    }

    public function getTemplateName()
    {
        return "theme::partials/scripts";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  61 => 14,  56 => 12,  52 => 11,  48 => 10,  44 => 9,  40 => 8,  36 => 7,  32 => 6,  27 => 4,  23 => 3,  19 => 2,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{# Core Theme Components #}
{{ asset_add(\"theme.js\", \"theme::js/vendor/jquery1.12.4.js\") }}
{{ asset_add(\"theme.js\", \"theme::js/vendor/bootstrap.min.js\") }}
{{ asset_add(\"theme.js\", \"theme::bower/js_composer/js/isotope.pkgd.min.js\") }}

{{ asset_add(\"theme.js\", \"theme::bower/fancybox/lib/jquery.mousewheel.pack.js\") }}
{{ asset_add(\"theme.js\", \"theme::bower/fancybox/source/jquery.fancybox.pack.js\") }}
{{ asset_add(\"theme.js\", \"theme::bower/fancybox/source/helpers/jquery.fancybox-thumbs.js\") }}
{{ asset_add(\"theme.js\", \"theme::js/vendor/vue.min.js\") }}
{{ asset_add(\"theme.js\", \"theme::js/vendor/jquery-migrate.min.js\") }}
{{ asset_add(\"theme.js\", \"theme::js/theme/jquery.theme.js\") }}
{{ asset_add(\"theme.js\", \"theme::js/theme/wp-embed.min.js\") }}

{{ html_script(asset_path(\"theme.js\", [\"min\"])) }}


", "theme::partials/scripts", "");
    }
}
