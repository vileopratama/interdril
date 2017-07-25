<?php

/* E:\xpyrocms\htdocs\interdril\vendor\anomaly\streams-platform\src\View\Command/../../../resources/views/tree/tree.twig */
class __TwigTemplate_c7faa7ab02209c065d746abbd3fbc5df8fbe3f75352143bdb5bb75ed9e7b701a extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'content' => array($this, 'block_content'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "scripts.js", "streams::js/table/jquery-sortable.js"));
        echo "
";
        // line 2
        echo call_user_func_array($this->env->getFunction('asset_add')->getCallable(), array("add", "scripts.js", "streams::js/tree/tree.js"));
        echo "

";
        // line 4
        $context["macro"] = $this->loadTemplate("streams::tree/macro", "E:\\xpyrocms\\htdocs\\interdril\\vendor\\anomaly\\streams-platform\\src\\View\\Command/../../../resources/views/tree/tree.twig", 4);
        // line 5
        echo "
";
        // line 6
        $this->displayBlock('content', $context, $blocks);
    }

    public function block_content($context, array $blocks = array())
    {
        // line 7
        echo "
    <div class=\"container-fluid\">

        ";
        // line 10
        if ( !$this->getAttribute($this->getAttribute(($context["tree"] ?? null), "items", array()), "empty", array(), "method")) {
            // line 11
            echo "            <ul class=\"tree sortable\">
                ";
            // line 12
            echo $context["macro"]->gettree($this->getAttribute($this->getAttribute(($context["tree"] ?? null), "items", array()), "root", array(), "method"), ($context["tree"] ?? null));
            echo "
            </ul>
        ";
        } else {
            // line 15
            echo "            <div class=\"card\">
                <div class=\"card-block\">
                    ";
            // line 17
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array($this->getAttribute($this->getAttribute(($context["tree"] ?? null), "options", array()), "get", array(0 => "no_results_message", 1 => "streams::message.no_results"), "method"))), "html", null, true);
            echo "
                </div>
            </div>
        ";
        }
        // line 21
        echo "
    </div>

";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\vendor\\anomaly\\streams-platform\\src\\View\\Command/../../../resources/views/tree/tree.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  67 => 21,  60 => 17,  56 => 15,  50 => 12,  47 => 11,  45 => 10,  40 => 7,  34 => 6,  31 => 5,  29 => 4,  24 => 2,  20 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{{ asset_add(\"scripts.js\", \"streams::js/table/jquery-sortable.js\") }}
{{ asset_add(\"scripts.js\", \"streams::js/tree/tree.js\") }}

{% import \"streams::tree/macro\" as macro %}

{% block content %}

    <div class=\"container-fluid\">

        {% if not tree.items.empty() %}
            <ul class=\"tree sortable\">
                {{ macro.tree(tree.items.root(), tree) }}
            </ul>
        {% else %}
            <div class=\"card\">
                <div class=\"card-block\">
                    {{ trans(tree.options.get('no_results_message', 'streams::message.no_results')) }}
                </div>
            </div>
        {% endif %}

    </div>

{% endblock %}
", "E:\\xpyrocms\\htdocs\\interdril\\vendor\\anomaly\\streams-platform\\src\\View\\Command/../../../resources/views/tree/tree.twig", "");
    }
}
