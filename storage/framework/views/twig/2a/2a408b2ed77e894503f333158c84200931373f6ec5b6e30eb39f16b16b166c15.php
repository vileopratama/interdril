<?php

/* theme::partials/stylesheet */
class __TwigTemplate_458b8c0f3b984680af7df1950afffeed4a17d8aa3ea4bb640129be9c852ae60e extends TwigBridge\Twig\Template
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
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::scss/bootstrap/bootstrap.scss"));
        echo "
";
        // line 3
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::scss/font-awesome/font-awesome.scss"));
        echo "
";
        // line 4
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::bower/fancybox/source/jquery.fancybox.css"));
        echo "
";
        // line 5
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::bower/fancybox/source/helpers/jquery.fancybox-thumbs.css"));
        echo "
";
        // line 6
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::css/animate.min.css"));
        echo "
";
        // line 7
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::css/light.css"));
        echo "
";
        // line 8
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::css/style.css"));
        echo "
";
        // line 9
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::css/responsive.css"));
        echo "
";
        // line 10
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::css/mx-styles.css"));
        echo "
";
        // line 11
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::css/contact.css"));
        echo "
";
        // line 12
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "theme.css", "theme::bower/js_composer/css/vc_lte_ie9.min.css"));
        echo "

";
        // line 15
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "build.css", "theme::scss/theme/theme.scss", array(0 => "live")));
        echo "
";
        // line 17
        echo "<style type=\"text/css\">
\t";
        // line 18
        echo call_user_func_array($this->env->getFunction('asset_inline')->getCallable(), array("inline", "theme.css", array(0 => "min")));
        echo "
\t";
        // line 19
        echo call_user_func_array($this->env->getFunction('asset_inline')->getCallable(), array("inline", "build.css", array(0 => "parse", 1 => "min")));
        echo "
</style>
<link rel='stylesheet' href='//fonts.googleapis.com/css?family=Lato%3A400%2C300%2C700%2C300italic%2C400italic%2C700italic&#038;ver=4.8' type='text/css' media='all' />
<link href=\"https://fonts.googleapis.com/css?family=Raleway:400%2C900\" rel=\"stylesheet\" property=\"stylesheet\" type=\"text/css\" media=\"all\" />

<link rel=\"canonical\" href=\"";
        // line 24
        echo $this->env->getExtension('Anomaly\Streams\Platform\StreamsPlugin')->url("/");
        echo "\" />
<link rel='shortlink' href='";
        // line 25
        echo $this->env->getExtension('Anomaly\Streams\Platform\StreamsPlugin')->url("/");
        echo "' />";
    }

    public function getTemplateName()
    {
        return "theme::partials/stylesheet";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  87 => 25,  83 => 24,  75 => 19,  71 => 18,  68 => 17,  64 => 15,  59 => 12,  55 => 11,  51 => 10,  47 => 9,  43 => 8,  39 => 7,  35 => 6,  31 => 5,  27 => 4,  23 => 3,  19 => 2,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{# Base Theme Components #}
{{ asset_add(\"theme.css\", \"theme::scss/bootstrap/bootstrap.scss\") }}
{{ asset_add(\"theme.css\", \"theme::scss/font-awesome/font-awesome.scss\") }}
{{ asset_add(\"theme.css\", \"theme::bower/fancybox/source/jquery.fancybox.css\") }}
{{ asset_add(\"theme.css\", \"theme::bower/fancybox/source/helpers/jquery.fancybox-thumbs.css\") }}
{{ asset_add(\"theme.css\", \"theme::css/animate.min.css\") }}
{{ asset_add(\"theme.css\", \"theme::css/light.css\") }}
{{ asset_add(\"theme.css\", \"theme::css/style.css\") }}
{{ asset_add(\"theme.css\", \"theme::css/responsive.css\") }}
{{ asset_add(\"theme.css\", \"theme::css/mx-styles.css\") }}
{{ asset_add(\"theme.css\", \"theme::css/contact.css\") }}
{{ asset_add(\"theme.css\", \"theme::bower/js_composer/css/vc_lte_ie9.min.css\") }}

{# Specific Build Files #}
{{ asset_add(\"build.css\", \"theme::scss/theme/theme.scss\", [\"live\"]) }}
{# Include Asset Collections #}
<style type=\"text/css\">
\t{{ asset_inline(\"theme.css\", [\"min\"]) }}
\t{{ asset_inline(\"build.css\", [\"parse\", \"min\"]) }}
</style>
<link rel='stylesheet' href='//fonts.googleapis.com/css?family=Lato%3A400%2C300%2C700%2C300italic%2C400italic%2C700italic&#038;ver=4.8' type='text/css' media='all' />
<link href=\"https://fonts.googleapis.com/css?family=Raleway:400%2C900\" rel=\"stylesheet\" property=\"stylesheet\" type=\"text/css\" media=\"all\" />

<link rel=\"canonical\" href=\"{{ url('/') }}\" />
<link rel='shortlink' href='{{ url('/') }}' />", "theme::partials/stylesheet", "");
    }
}
