<?php

/* theme::partials/metadata */
class __TwigTemplate_7c2bb64cdcce9a02146ec382c5e097c57ca9003ec400abe4a19a4585b0235ea0 extends TwigBridge\Twig\Template
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
        echo "<!-- Meta -->
<meta charset=\"utf-8\">
<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\">

<title>";
        // line 7
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array("pyrocms.theme.accelerant::control_panel.title")), "html", null, true);
        echo " &#8250; ";
        echo call_user_func_array($this->env->getFunction('trans')->getCallable(), array(twig_last($this->env, twig_get_array_keys_filter($this->getAttribute($this->getAttribute(($context["template"] ?? null), "breadcrumbs", array()), "all", array(), "method")))));
        echo "</title>

<!-- Favicons -->
<link rel=\"apple-touch-icon-precomposed\" sizes=\"57x57\" href=\"";
        // line 10
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/apple-touch-icon-57x57.png")), "html", null, true);
        echo "\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"";
        // line 11
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/apple-touch-icon-114x114.png")), "html", null, true);
        echo "\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"";
        // line 12
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/apple-touch-icon-72x72.png")), "html", null, true);
        echo "\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"";
        // line 13
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/apple-touch-icon-144x144.png")), "html", null, true);
        echo "\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"60x60\" href=\"";
        // line 14
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/apple-touch-icon-60x60.png")), "html", null, true);
        echo "\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"120x120\" href=\"";
        // line 15
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/apple-touch-icon-120x120.png")), "html", null, true);
        echo "\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"76x76\" href=\"";
        // line 16
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/apple-touch-icon-76x76.png")), "html", null, true);
        echo "\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"152x152\" href=\"";
        // line 17
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/apple-touch-icon-152x152.png")), "html", null, true);
        echo "\"/>
<link rel=\"icon\" type=\"image/png\" href=\"";
        // line 18
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/favicon-196x196.png")), "html", null, true);
        echo "\" sizes=\"196x196\"/>
<link rel=\"icon\" type=\"image/png\" href=\"";
        // line 19
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/favicon-96x96.png")), "html", null, true);
        echo "\" sizes=\"96x96\"/>
<link rel=\"icon\" type=\"image/png\" href=\"";
        // line 20
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/favicon-32x32.png")), "html", null, true);
        echo "\" sizes=\"32x32\"/>
<link rel=\"icon\" type=\"image/png\" href=\"";
        // line 21
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/favicon-16x16.png")), "html", null, true);
        echo "\" sizes=\"16x16\"/>
<link rel=\"icon\" type=\"image/png\" href=\"";
        // line 22
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('image_url')->getCallable(), array("pyrocms.theme.accelerant::img/favicons/favicon-128.png")), "html", null, true);
        echo "\" sizes=\"128x128\"/>

";
        // line 25
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "pyrocms.theme.accelerant::scss/fonts/fonts.scss", array(0 => "parse")));
        echo "
";
        // line 26
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "pyrocms.theme.accelerant::scss/bootstrap/bootstrap.scss"));
        echo "
";
        // line 27
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "build.css", "pyrocms.theme.accelerant::scss/theme/theme.scss"));
        echo "

";
        // line 29
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "pyrocms.theme.accelerant::js/vendor/*"));
        echo "
";
        // line 30
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "pyrocms.theme.accelerant::js/libraries/tether.min.js"));
        echo "
";
        // line 31
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "pyrocms.theme.accelerant::js/libraries/*"));
        echo "
";
        // line 32
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.js", "pyrocms.theme.accelerant::js/theme/*"));
        echo "

";
        // line 34
        echo call_user_func_array($this->env->getFunction('asset_style')->getCallable(), array("style", "theme.css"));
        echo "
";
        // line 35
        echo call_user_func_array($this->env->getFunction('asset_style')->getCallable(), array("style", "build.css", array(0 => "live")));
        echo "

";
        // line 37
        echo call_user_func_array($this->env->getFunction('constants')->getCallable(), array());
        echo "

";
        // line 39
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(call_user_func_array($this->env->getFunction('asset_styles')->getCallable(), array("styles", "styles.css")));
        foreach ($context['_seq'] as $context["_key"] => $context["style"]) {
            // line 40
            echo "    ";
            echo $context["style"];
            echo "
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['style'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 42
        echo "
";
        // line 43
        echo call_user_func_array($this->env->getFunction('asset_script')->getCallable(), array("script", "theme.js"));
        echo "
";
    }

    public function getTemplateName()
    {
        return "theme::partials/metadata";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  148 => 43,  145 => 42,  136 => 40,  132 => 39,  127 => 37,  122 => 35,  118 => 34,  113 => 32,  109 => 31,  105 => 30,  101 => 29,  96 => 27,  92 => 26,  88 => 25,  83 => 22,  79 => 21,  75 => 20,  71 => 19,  67 => 18,  63 => 17,  59 => 16,  55 => 15,  51 => 14,  47 => 13,  43 => 12,  39 => 11,  35 => 10,  27 => 7,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!-- Meta -->
<meta charset=\"utf-8\">
<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">
<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0\">

<title>{{ trans('pyrocms.theme.accelerant::control_panel.title') }} &#8250; {{ trans(template.breadcrumbs.all()|keys|last)|raw }}</title>

<!-- Favicons -->
<link rel=\"apple-touch-icon-precomposed\" sizes=\"57x57\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/apple-touch-icon-57x57.png') }}\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/apple-touch-icon-114x114.png') }}\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/apple-touch-icon-72x72.png') }}\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/apple-touch-icon-144x144.png') }}\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"60x60\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/apple-touch-icon-60x60.png') }}\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"120x120\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/apple-touch-icon-120x120.png') }}\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"76x76\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/apple-touch-icon-76x76.png') }}\"/>
<link rel=\"apple-touch-icon-precomposed\" sizes=\"152x152\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/apple-touch-icon-152x152.png') }}\"/>
<link rel=\"icon\" type=\"image/png\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/favicon-196x196.png') }}\" sizes=\"196x196\"/>
<link rel=\"icon\" type=\"image/png\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/favicon-96x96.png') }}\" sizes=\"96x96\"/>
<link rel=\"icon\" type=\"image/png\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/favicon-32x32.png') }}\" sizes=\"32x32\"/>
<link rel=\"icon\" type=\"image/png\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/favicon-16x16.png') }}\" sizes=\"16x16\"/>
<link rel=\"icon\" type=\"image/png\" href=\"{{ image_url('pyrocms.theme.accelerant::img/favicons/favicon-128.png') }}\" sizes=\"128x128\"/>

{#{{ asset_add(\"theme.css\", \"pyrocms.theme.accelerant::scss/flat-ui/flat-ui.scss\") }}#}
{{ asset_add(\"theme.css\", \"pyrocms.theme.accelerant::scss/fonts/fonts.scss\", [\"parse\"]) }}
{{ asset_add(\"theme.css\", \"pyrocms.theme.accelerant::scss/bootstrap/bootstrap.scss\") }}
{{ asset_add(\"build.css\", \"pyrocms.theme.accelerant::scss/theme/theme.scss\") }}

{{ asset_add(\"theme.js\", \"pyrocms.theme.accelerant::js/vendor/*\") }}
{{ asset_add(\"theme.js\", \"pyrocms.theme.accelerant::js/libraries/tether.min.js\") }}
{{ asset_add(\"theme.js\", \"pyrocms.theme.accelerant::js/libraries/*\") }}
{{ asset_add(\"theme.js\", \"pyrocms.theme.accelerant::js/theme/*\") }}

{{ asset_style(\"theme.css\") }}
{{ asset_style(\"build.css\", [\"live\"]) }}

{{ constants() }}

{% for style in asset_styles(\"styles.css\") %}
    {{ style|raw }}
{% endfor %}

{{ asset_script(\"theme.js\") }}
", "theme::partials/metadata", "");
    }
}
