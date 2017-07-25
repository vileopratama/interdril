<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/files-field_type/resources/views/table/table.twig */
class __TwigTemplate_6e18c7972be6c91a7519a0eb2d8533f213014ac2230b6d91de3ef3b9f747c4f2 extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'panel' => array($this, 'block_panel'),
            'body' => array($this, 'block_body'),
            'no_results' => array($this, 'block_no_results'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        if ( !$this->getAttribute(($context["actions"] ?? null), "empty", array(), "method")) {
            // line 2
            echo "    ";
            echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "scripts.js", "streams::js/table/actions.js"));
            echo "
";
        }
        // line 4
        echo "
";
        // line 5
        if ($this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "sortable", array())) {
            // line 6
            echo "    ";
            echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "scripts.js", "streams::js/table/sortable.js"));
            echo "
";
        }
        // line 8
        echo "
<div class=\"";
        // line 9
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "container_class", array()), "html", null, true);
        echo "\">

    ";
        // line 11
        if ( !$this->getAttribute($this->getAttribute(($context["table"] ?? null), "rows", array()), "empty", array(), "method")) {
            // line 14
            echo "        ";
            $this->displayBlock('panel', $context, $blocks);
            // line 29
            echo "    ";
        } else {
            // line 30
            echo "
        ";
            // line 31
            $this->displayBlock('no_results', $context, $blocks);
            // line 38
            echo "
    ";
        }
        // line 40
        echo "
</div>
";
    }

    // line 14
    public function block_panel($context, array $blocks = array())
    {
        // line 15
        echo "            <div class=\"";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "panel_class", array()), "html", null, true);
        echo " panel-table\">

                <div class=\"table-responsive\">
                    <table class=\"";
        // line 18
        echo twig_escape_filter($this->env, (($this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "class", array())) ? ($this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "class", array())) : ("table table-striped")), "html", null, true);
        echo "\" ";
        echo (($this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "sortable", array())) ? ("data-sortable") : (""));
        echo " ";
        echo call_user_func_array($this->env->getFunction('html_attributes')->getCallable(), array("attributes", $this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "attributes", array())));
        echo ">

                        ";
        // line 20
        $this->displayBlock('body', $context, $blocks);
        // line 23
        echo "
                    </table>
                </div>

            </div>
        ";
    }

    // line 20
    public function block_body($context, array $blocks = array())
    {
        // line 21
        echo "                            ";
        echo call_user_func_array($this->env->getFunction('view')->getCallable(), array("anomaly.field_type.files::table/partials/body", array("table" => ($context["table"] ?? null))));
        echo "
                        ";
    }

    // line 31
    public function block_no_results($context, array $blocks = array())
    {
        // line 32
        echo "            <div class=\"";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "panel_class", array()), "html", null, true);
        echo "\">
                <div class=\"";
        // line 33
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "panel_body_class", array()), "html", null, true);
        echo "\">
                    ";
        // line 34
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array($this->getAttribute($this->getAttribute(($context["table"] ?? null), "options", array()), "get", array(0 => "no_results_message", 1 => "streams::message.no_results"), "method"))), "html", null, true);
        echo "
                </div>
            </div>
        ";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/files-field_type/resources/views/table/table.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  124 => 34,  120 => 33,  115 => 32,  112 => 31,  105 => 21,  102 => 20,  93 => 23,  91 => 20,  82 => 18,  75 => 15,  72 => 14,  66 => 40,  62 => 38,  60 => 31,  57 => 30,  54 => 29,  51 => 14,  49 => 11,  44 => 9,  41 => 8,  35 => 6,  33 => 5,  30 => 4,  24 => 2,  22 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% if not actions.empty() %}
    {{ asset_add(\"scripts.js\", \"streams::js/table/actions.js\") }}
{% endif %}

{% if table.options.sortable %}
    {{ asset_add(\"scripts.js\", \"streams::js/table/sortable.js\") }}
{% endif %}

<div class=\"{{ table.options.container_class }}\">

    {% if not table
        .rows
        .empty() %}
        {% block panel %}
            <div class=\"{{ table.options.panel_class }} panel-table\">

                <div class=\"table-responsive\">
                    <table class=\"{{ table.options.class ?: 'table table-striped' }}\" {{ table.options.sortable ? 'data-sortable' }} {{ html_attributes(table.options.attributes) }}>

                        {% block body %}
                            {{ view(\"anomaly.field_type.files::table/partials/body\", {'table': table}) }}
                        {% endblock %}

                    </table>
                </div>

            </div>
        {% endblock %}
    {% else %}

        {% block no_results %}
            <div class=\"{{ table.options.panel_class }}\">
                <div class=\"{{ table.options.panel_body_class }}\">
                    {{ trans(table.options.get('no_results_message', 'streams::message.no_results')) }}
                </div>
            </div>
        {% endblock %}

    {% endif %}

</div>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/files-field_type/resources/views/table/table.twig", "");
    }
}
